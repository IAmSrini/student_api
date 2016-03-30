Rails.application.routes.draw do
  resources :registrations, except: [:new, :edit]
  resources :courses, except: [:new, :edit]
  resources :semesters, except: [:new, :edit]
  resources :students, except: [:new, :edit]

root 'students#index'
#Routes for semester registrations
  get 'spring2016.json' => 'semesters#spring16'
  get 'fall2016.json' => 'semesters#fall16'
  get 'spring2017.json' => 'semesters#spring17'
  get 'fall2017.json' => 'semesters#fall17'

#Routes for specific course
  get 'Clanguage.json' => 'courses#Clanguage'
  get 'TheoryOfAutomata.json' => 'courses#TheoryOfAutomata'
  get 'Java.json' => 'courses#Java'
  get 'AdvancedJava.json' => 'courses#AdvancedJava'
  get 'ParallelProgramming.json' => 'courses#ParallelProgramming'
  get 'QTheory.json' => 'courses#QTheory'

#Routes for student registrations
  get 'student1' => 'registrations#stu1'
  get 'student2' => 'registrations#stu2'
  get 'student3' => 'registrations#stu3'
  get 'student4' => 'registrations#stu4'
  get 'student5' => 'registrations#stu5'
  get 'student6' => 'registrations#stu6'
  get 'student7' => 'registrations#stu7'
  get 'student8' => 'registrations#stu8'
  get 'student9' => 'registrations#stu9'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
