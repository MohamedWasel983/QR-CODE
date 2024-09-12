import qrcode

def generate_qr_code(data, file_name='qr_code.png'):
    # Create a QR code object
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    
    # Add data to the QR code object
    qr.add_data(data)
    qr.make(fit=True)
    
    # Create an image from the QR code object
    img = qr.make_image(fill='black', back_color='white')
    
    # Save the image to a file
    img.save(file_name)
    print(f"QR code generated and saved as {file_name}")

if __name__ == "__main__":
    # Get data from user
    data = input("Enter the data for the QR code: ")
    
    # Generate QR code with the given data
    generate_qr_code(data)
