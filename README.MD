# Projekt: Podstawy Docker i docker-compose
**Student:** Jakub Żyszkiewicz 60296

Projekt zawiera pełną architekturę kontenerową dla aplikacji Django i bazy danych PostgreSQL.

## Zrealizowane wymagania:
1. **Separacja sieciowa:** Wdrożono dwie odizolowane sieci typu bridge:
   * `db_net` - dedykowana wyłącznie dla komunikacji Django <-> PostgreSQL.
   * `admin_net` - dedykowana dla komunikacji Django <-> pgAdmin.
2. **Bezpieczeństwo bazy:** Usługa bazy danych `db` nie eksponuje żadnych portów na zewnątrz hosta. Dostęp do niej jest możliwy wyłącznie z poziomu sieci kontenerowej.
3. **Zarządzanie:** Dodano kontener pgAdmin do wizualnego zarządzania bazą danych.

## Instrukcja uruchomienia:
W głównym katalogu projektu należy wykonać komendę:
```bash
docker-compose up --build