require 'lib/file'
require 'test/unit'

#Pruebas unitarias
#Aqui se realizan las pruebas para comprobar que la clase funciona
class TestNutrition < Test::Unit::TestCase
    
    def setup
        #Persona1
        name = "Jose"
        surname = "Fernandez"
	sex = 1
	age = 45
        height = 1.7
        weight = 70
	waist = [0.4, 0.6]
	hip = [0.5, 0.7]
	tricipital = [0.4, 0.5, 0.7]
        bicipital = [0.9, 0.8, 0.4]
        subescapular = [0.5, 0.8, 0.6]
        suprailiaco = [0.9, 0.8, 0.6]
        arm = [0.4, 0.9]
        @persona1 = Nutrition.new(name, surname, sex, age, height, weight, waist, hip, tricipital, bicipital, subescapular, suprailiaco, arm)
    end
 
    def test_antropometrico
        #Aqui hacemos las pruebas de la persona1
        assert_equal("Name: Jose\n", @persona1.print_name)
        assert_equal("Surname: Fernandez\n", @persona1.print_surname)
        assert_equal("Age: 45\n", @persona1.print_age)
        assert_equal("Sex: 1\n", @persona1.print_sex)
        assert_equal("Weight: 70\n", @persona1.print_weight)
        assert_equal("Height: 1.7\n", @persona1.print_height)
        assert_equal(24.22, @persona1.imc)
    end
    
    def test_pliegues
        #Pruebas de la persona1
        assert_equal(0.53, @persona1.tricipital_to_s)
        assert_equal(0.7, @persona1.bicipital_to_s)
        assert_equal(0.63, @persona1.subescapular_to_s)
        assert_equal(0.77, @persona1.suprailiaco_to_s)
       
        #Prueba de la persona1
        assert_equal(0.5, @persona1.waist_to_s)
        assert_equal(0.6, @persona1.hip_to_s)
        assert_equal(0.65, @persona1.arm_to_s)
    end
    
end
