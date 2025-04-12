### Summary: Include screen shots or a video of your app highlighting its features
The Recipe App is a SwiftUI-based application that fetches and displays a list of recipes from a remote JSON API. 
It features a clean user interface with a navigation stack that allows users to tap on a recipe and view its detailed information. 
I used MVVM architecture with @EnvironmentObject for shared state, and async/await with URLSession for asynchronous data fetching.
Below are the screenShots:
![Simulator Screenshot - iPhone 16 Pro - 2025-04-12 at 15 22 01](https://github.com/user-attachments/assets/48c3e9e6-2173-4482-985a-5570b7c0a878)
![Simulator Screenshot - iPhone 16 Pro - 2025-04-12 at 15 22 09](https://github.com/user-attachments/assets/9f127ca1-198c-4af7-9a68-350626aa5340)
![Simulator Screenshot - iPhone 16 Pro - 2025-04-12 at 15 22 22](https://github.com/user-attachments/assets/7d348b98-8dca-48e4-b795-05de8b2a7184)

### Focus Areas: What specific areas of the project did you prioritize? Why did you choose to focus on these areas?
I focused primarily on the following areas:
1.Data fetching with async/await to ensure modern and clean asynchronous handling.
2.MVVM Architecture, to separate logic from UI and keep the code scalable and organized.
3.Reusable components, such as RecipeRow and DetailRecipeView.
4.SwiftUI NavigationStack, to handle navigation cleanly and declaratively.

### Time Spent: Approximately how long did you spend working on this project? How did you allocate your time?
I spent approximately 5-6 hours on this project.

### Trade-offs and Decisions: Did you make any significant trade-offs in your approach?
I chose to keep the error handling minimal, only displaying a static message when data is unavailable. 
This was a trade-off to keep the UI simple and focus more on core functionality.

### Weakest Part of the Project: What do you think is the weakest part of your project?
The weakest part of the project is the error handling and user feedback during network failures. 
Currently, if the app encounters a network issue or fails to decode the data, it just prints the error to the console without showing meaningful feedback to the user. 
Implementing more robust error messages or retry options in the UI would greatly improve the reliability and user trust in the app.

### Additional Information: Is there anything else we should know? Feel free to share any insights or constraints you encountered.
The project uses SwiftUI’s @EnvironmentObject to manage shared data across views.
I learned a lot about working with asynchronous tasks, JSON decoding, and navigation in SwiftUI.
One key challenge was managing state updates from background threads — I resolved this using @MainActor and understanding Swift concurrency better.
This project helped me get more comfortable with SwiftUI’s modern data flow and design patterns.
