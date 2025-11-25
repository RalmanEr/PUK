import random
import string

def generate_password(length=12):
    """Генератор случайных паролей"""
    characters = string.ascii_letters + string.digits + "!@#$%^&*"
    password = ''.join(random.choice(characters) for _ in range(length))
    return password

def main():
    print("🔐 Генератор случайных паролей")
    print("=" * 30)
    
    try:
        length = int(input("Введите длину пароля (по умолчанию 12): ") or 12)
        count = int(input("Сколько паролей сгенерировать? (по умолчанию 1): ") or 1)
        
        print("\nВаши пароли:")
        print("-" * 20)
        for i in range(count):
            password = generate_password(length)
            print(f"{i+1}. {password}")
            
    except ValueError:
        print("Ошибка: введите корректные числа!")

if __name__ == "__main__":
    main()


