import SwiftUI

struct LoginPage: View {
    @StateObject var viewModel = LoginPageViewModel()
    var body: some View {
        NavigationView{
            // Header
            VStack{
                VStack {
                    Text("Sign in to Schedulize📝")
                        .bold()
                        .font(.title)
                        .padding(.top, 20)
                        .padding(.trailing, 90)
                }
                
                // Form section
                VStack{
                    VStack(alignment: .leading){
                        Text("Username")
                            .bold()
                        TextField("dj3zs", text: $viewModel.email)
                            .autocorrectionDisabled()
//                            .autocapitalization(.none)
                            .padding()
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    }.padding()
                    VStack(alignment: .leading) {
                        Text("Password")
                            .bold()
                        SecureField("********", text: $viewModel.password)
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
                            Text("Sign In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    })
                    .padding()
                }
                ////
                Spacer()
                Divider()
                HStack{
                    Text("Don't have an acccount? ")
                    NavigationLink("Sign Up", destination: SignUpPage())
                }
            }
            
            
        }
        
    }
}

#Preview {
    LoginPage()
}
