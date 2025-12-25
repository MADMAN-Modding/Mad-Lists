import UIKit

final class RenamePromptPresenter {
    static func present(
        title: String,
        currentName: String,
        placeholder: String = "Name",
        completion: @escaping (String?) -> Void
    ) {
        guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let rootVC = scene.windows.first?.rootViewController else {
            completion(nil)
            return
        }

        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)

        alert.addTextField { textField in
            textField.text = currentName
            textField.placeholder = placeholder
            textField.clearButtonMode = .whileEditing
            textField.autocapitalizationType = .words
            textField.returnKeyType = .done
        }

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in
            completion(nil)
        })

        alert.addAction(UIAlertAction(title: "Done", style: .default) { _ in
            completion(alert.textFields?.first?.text)
        })

        rootVC.present(alert, animated: true)
    }
}

