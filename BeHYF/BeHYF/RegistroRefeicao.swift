import SwiftUI
import PhotosUI
import UIKit

// Observables para armazenar e persistir os campos de texto
class CampoDeTextoUm: ObservableObject {
    @Published var field1: String {
        didSet { UserDefaults.standard.set(field1, forKey: "field1") }
    }
    @Published var field2: String {
        didSet { UserDefaults.standard.set(field2, forKey: "field2") }
    }
    @Published var field3: String {
        didSet { UserDefaults.standard.set(field3, forKey: "field3") }
    }
    @Published var field4: String {
        didSet { UserDefaults.standard.set(field4, forKey: "field4") }
    }
    
    init() {
        self.field1 = UserDefaults.standard.string(forKey: "field1") ?? ""
        self.field2 = UserDefaults.standard.string(forKey: "field2") ?? ""
        self.field3 = UserDefaults.standard.string(forKey: "field3") ?? ""
        self.field4 = UserDefaults.standard.string(forKey: "field4") ?? ""
    }
}

class CampoDeTextoDois: ObservableObject {
    @Published var field5: String {
        didSet { UserDefaults.standard.set(field5, forKey: "field5") }
    }
    @Published var field6: String {
        didSet { UserDefaults.standard.set(field6, forKey: "field6") }
    }
    @Published var field7: String {
        didSet { UserDefaults.standard.set(field7, forKey: "field7") }
    }
    @Published var field8: String {
        didSet { UserDefaults.standard.set(field8, forKey: "field8") }
    }
    
    init() {
        self.field5 = UserDefaults.standard.string(forKey: "field5") ?? ""
        self.field6 = UserDefaults.standard.string(forKey: "field6") ?? ""
        self.field7 = UserDefaults.standard.string(forKey: "field7") ?? ""
        self.field8 = UserDefaults.standard.string(forKey: "field8") ?? ""
    }
}

struct RegistroRefeicao: View {
    @StateObject private var viewModelUm = CampoDeTextoUm()
    @StateObject private var viewModelDois = CampoDeTextoDois()
    
    @State private var capturedImage1: UIImage?
    @State private var capturedImage2: UIImage?
    
    @State private var isShowingCamera1 = false
    @State private var isShowingCamera2 = false
    
    var body: some View {
        NavigationStack {
            List {
                // Seção com o primeiro ícone de câmera
                Section {
                    HStack {
                        // Imagem capturada 1
                        if let image = capturedImage1 {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                        } else {
                            Image("chá")
                        }
                        
                        // Botão de captura de imagem usando a câmera
                        Button(action: {
                            isShowingCamera1 = true
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.title)
                                .padding(.horizontal, 60)
                                .foregroundColor(.white) // Cor do ícone para branco
                        }
                        .sheet(isPresented: $isShowingCamera1) {
                            CameraView(isPresented: $isShowingCamera1, capturedImage: $capturedImage1)
                        }
                    }
                }
                
                // Seção com o segundo ícone de câmera
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            isShowingCamera2 = true
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.title)
                                .foregroundColor(.white) // Cor do ícone para branco
                        }
                        .sheet(isPresented: $isShowingCamera2) {
                            CameraView(isPresented: $isShowingCamera2, capturedImage: $capturedImage2)
                        }
                        Spacer()
                    }
                }
                
                // Seção "Alimentos Ingeridos"
                Section("Alimentos Ingeridos") {
                    HStack {
                        VStack {
                            HStack {
                                TextField("(Nome do alimento)", text: $viewModelDois.field5)
                                    .foregroundStyle(.blue)
                                    .bold()
                                Spacer()
                                TextField("ml/kcal", text: $viewModelDois.field6)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Text("Descrição:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                TextField("Digite...", text: $viewModelUm.field1)
                                Spacer()
                            }
                            
                            Spacer()
                            
                            HStack {
                                Text("Emoções associadas:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                TextField("Digite...", text: $viewModelUm.field2)
                                Spacer()
                            }
                        }
                    }
                }
                
                // Seção "Chá"
                Section {
                    HStack {
                        VStack {
                            HStack {
                                TextField("(Nome do alimento)", text: $viewModelDois.field7)
                                    .foregroundStyle(.blue)
                                    .bold()
                                Spacer()
                                TextField("ml/kcal", text: $viewModelDois.field8)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Text("Descrição:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                TextField("Digite...", text: $viewModelUm.field3)
                                Spacer()
                            }
                            
                            Spacer()
                            
                            HStack {
                                Text("Emoções associadas:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                TextField("Digite...", text: $viewModelUm.field4)
                                Spacer()
                            }
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    VStack {
                        Text("Café da Manhã")
                        Text("7:30")
                            .font(.footnote)
                        Text("24/01/24")
                            .font(.footnote)
                    }
                    .font(.title)
                    .bold()
                }
            }
        }
    }
}

// UIViewControllerRepresentable para capturar a imagem usando UIImagePickerController
struct CameraView: UIViewControllerRepresentable {
    @Binding var isPresented: Bool
    @Binding var capturedImage: UIImage?
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: CameraView

        init(_ parent: CameraView) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.capturedImage = uiImage
            }
            parent.isPresented = false
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isPresented = false
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}

#Preview {
    RegistroRefeicao()
}
