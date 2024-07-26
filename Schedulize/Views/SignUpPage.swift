import SwiftUI

struct SignUpPage: View {
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @State var confirmPassword = ""
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Welcome to Schedulize🗓️")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.trailing, 60).padding(.top, 40)
                
                VStack{
                    VStack(alignment: .leading){
                        Text("Username")
                            .bold()
                        TextField("eg. dj3zs", text: $username)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                            .padding()
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    }.padding()
                    VStack(alignment: .leading){
                        Text("Email")
                            .bold()
                        TextField("dj3zs@ mail.com", text: $email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                            .padding()
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    }
                    .padding()
                    .padding(.top, -20)
                    VStack(alignment: .leading) {
                        Text("Password")
                            .bold()
                        SecureField("********", text: $password)
                            .padding()
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    }
                    .padding()
                    .padding(.top, -20)
                    VStack(alignment: .leading) {
                        Text("Confirm Password")
                            .bold()
                        SecureField("********", text: $confirmPassword)
                            .padding()
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    }
                    .padding()
                    .padding(.top, -20)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(height: 50)
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .bold()
                        }
                    })
                    .padding()
                    HStack{
                        Text("By signing up, you are agreeing to our Terms of service and Privacy Policy")
                    }
                    .padding()
//                    .padding(.top, -20)
                    Spacer()
//                    Divider()
//                    HStack{
//                        Text("Already have an acccount? ")
//                        NavigationLink("Sign In", destination: LoginPage())
//                    }
                }
            }
        }
    }
}

#Preview {
    SignUpPage()
}
