# ---- Build stage ----
FROM eclipse-temurin:17-jdk AS build
WORKDIR /app

# Copy source code
COPY src ./src

# Compile app
RUN javac -d out src/main/java/Calculator.java

# ---- Run stage ----
FROM eclipse-temurin:17-jre
WORKDIR /app

COPY --from=build /app/out ./out

ENTRYPOINT ["java", "-cp", "out", "Calculator"]
CMD ["10", "20"]
