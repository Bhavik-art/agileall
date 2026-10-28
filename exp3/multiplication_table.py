import sys

def main():
    if len(sys.argv) != 2:
        print("Usage: python multiplication_table.py <number>")
        raise SystemExit(1)

    try:
        number = int(sys.argv[1])
    except ValueError:
        print("Please provide a valid integer.")
        raise SystemExit(1)

    for i in range(1, 11):
        print(f"{number} x {i} = {number * i}")

if __name__ == "__main__":
    main()
