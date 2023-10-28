CREATE TABLE tutor(
  ID SERIAL,
  cpf_tutor INT PRIMARY KEY,
  nome_tutor VARCHAR(50) NOT NULL
);

CREATE TABLE pet(
  id_pet SERIAL PRIMARY KEY,
  nome_pet VARCHAR(50) NOT NULL,
  raca_pet VARCHAR(20) NOT NULL,
  tutor_cpf INT,
  CONSTRAINT fk_cpf
  FOREIGN KEY(tutor_cpf)
  REFERENCES tutor(cpf_tutor)
  );
  
INSERT INTO tutor(cpf_tutor, nome_tutor) VALUES
	(983746281, 'Cleiton'),
    (827394039,'Jose'),
    (983746271,'Ana'),
    (827463728, 'Carolina'),
    (989897231,'Teodora')
    
INSERT INTO pet( nome_pet, raca_pet, tutor_cpf) VALUES
	('Pipoca','SRD',983746271),
    ('Ginger', 'Chihuahua',827463728),
    ('Princesa','Pitbull',989897231)
    
SELECT nome_tutor, id from tutor
inner join pet
ON pet.tutor_cpf = tutor.cpf_tutor;

SELECT nome_tutor, ID from tutor
LEFT JOIN pet
on pet.tutor_cpf = tutor.cpf_tutor;
    
SELECT nome_tutor, ID, nome_pet
FROM pet
RIGHT JOIN tutor
ON pet.tutor_cpf = tutor.cpf_tutor;
  
  SELECT nome_tutor, ID, nome_pet
  FROM pet
  LEFT join tutor
  ON pet.tutor_cpf = tutor.cpf_tutor
    UNION
  SELECT nome_tutor, ID, nome_pet
  FROM pet
  RIGHT JOIN tutor
  ON pet.tutor_cpf = tutor.cpf_tutor
  
