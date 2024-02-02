Apple-Frameworks.
=================

Apple Frameworks
----------------
- Frameworks - Grid Start.
- Frameworks - Grid End.
- Frameworks - Detail View.
- Frameworks - Intro to MVVM & Moving Data.
- Frameworks - Integrating with UIKit.
- Frameworks - Refactor.
- Frameworks - iOS 15 & 16 Updates.

Reusable Button
---------------
```````````````ruby

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.black.gradient)
            .foregroundStyle(.white)
            .cornerRadius(15)
            .padding()
    }
}

#Preview {
    AFButton(title: "title")
        .preferredColorScheme(.dark)
}

---------------

 Button(action: {
     // action
 }, label: {
     AFButton(title: "See more")
 })

```````````````
