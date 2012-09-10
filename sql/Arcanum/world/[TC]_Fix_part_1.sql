-- Spell script name linking for Defending Wyrmrest Temple: Destabilize Azure Dragonshrine Effect
DELETE FROM `spell_script_names` WHERE `spell_id`=49370 ;
INSERT INTO `spell_script_names` VALUES
(49370,'spell_q12372_destabilize_azure_dragonshrine_dummy');

-- DB/Spells: Fix Flamecap Fire damage
SET @Spell := 28715; -- Flamecap Fire
DELETE FROM `spell_bonus_data` WHERE `entry`=@Spell;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(@Spell,0,0,0,0, 'Flamecap Fire');

-- ����������� ��������� ������ � ������� ��������
UPDATE `script_texts` SET `content_loc8` = '� ������ ������� ����������� ������������� ����� ���, ��� ������ ����������� ��������. �� ������ �������� ����!' WHERE `entry` = -1043001;
UPDATE `script_texts` SET `content_loc8` = '��� ������ ���� �����-�� ������, ������� ������� ������� �� ������������� �������������� � �����. ������ ��� ���� ������ ��������.' WHERE `entry` = -1043002;
UPDATE `script_texts` SET `content_loc8` = '�������! �� ������ ����������. ��� ����� ������� ����� ���, ������ ��� �� ������ �������� ��������� �� ��� �������.' WHERE `entry` = -1043003;
UPDATE `script_texts` SET `content_loc8` = '� ���� ����� ���� � ������ ���������� ����������, ������� ������ ������� �����, ������ ������������ ����.' WHERE `entry` = -1043004;
UPDATE `script_texts` SET `content_loc8` = '������ ���� �������. ������ �� ���� � ���������!' WHERE `entry` = -1043005;
UPDATE `script_texts` SET `content_loc8` = '������ �������, �������� �������� � ������ ���. ����� ��������� ��� ���� �� ����� ������� ������!' WHERE `entry` = -1043006;
UPDATE `script_texts` SET `content_loc8` = '��������� ����, ���������! � ���� ����������� � ���������� ���, ����� ������ ��������� � �������� ����� �����!' WHERE `entry` = -1043007;
UPDATE `script_texts` SET `content_loc8` = '��� ������� ���������� �������� ������� ��������� ����������� ���������! ��� ��������.' WHERE `entry` = -10430012;
UPDATE `script_texts` SET `content_loc8` = '��, � �������� �� ��������� �������! � ��������� ����, ��� ������ ������, ������ � ������� ����������.' WHERE `entry` = -10430015;
UPDATE `script_texts` SET `content_loc8` = '�� ������ ���� � ����������� � ������� ���������. ��������� ������� ����� ������, ������ ��� � ���� ������� ��� ���� ������� ������������ �����. ��������, ���������!' WHERE `entry` = -10430016;
UPDATE `script_texts` SET `content_loc8` = '�������-��! ��������� ����� ���������! �� �������� ���, ������ �������� �����������!' WHERE `entry` = -1043000;
UPDATE `script_texts` SET `content_loc8` = '�������-��! � ����������!' WHERE `entry` = -1043013;
UPDATE `script_texts` SET `content_loc8` = '%S ����� ��������� ������ �� ����������� ���������' WHERE `entry` = -1043008;
UPDATE `script_texts` SET `content_loc8` = '%S ��������� �������� � ��������� ���.' WHERE `entry` = -1043009;
UPDATE `script_texts` SET `content_loc8` = '%S �������� � �����. ������ �������� ��� ������!' WHERE `entry` = -1043010;
UPDATE `script_texts` SET `content_loc8` = '%S ������ �������� �������. ���-�� ��������� ��� ������ ����.' WHERE `entry` = -1043011;

-- ������� �� ������ 898
UPDATE `script_texts` SET `content_loc8` = '���� �����, $n. ��� ����������� ���� ������. �������� ��� ������� ��������� ������. �����!' WHERE `entry` = -1000370;
UPDATE `script_texts` SET `content_loc8` = '�������-��! �������� ������� �� ����������! ��� ����� �����, ����� ����������!' WHERE `entry` = -1000371;
UPDATE `script_texts` SET `content_loc8` = '������ � �������� ���� �����. ������� �������� � ������. �����, $n.' WHERE `entry` = -1000372;
UPDATE `script_texts` SET `content_loc8` = '������, ��� ����������� ����� ����� ������ ����������� �� ���������. ��� ����� ����� ���������.' WHERE `entry` = -1000373;
UPDATE `script_texts` SET `content_loc8` = '�������! $C �������!' WHERE `entry` = -1000374;
UPDATE `script_texts` SET `content_loc8` = '������ ����� ��� �����!' WHERE `entry` = -1000375;
UPDATE `script_texts` SET `content_loc8` = '$C ���� ����� �� ���!' WHERE `entry` = -1000376;
UPDATE `script_texts` SET `content_loc8` = '�������, $C' WHERE `entry` = -1000377;
UPDATE `script_texts` SET `content_loc8` = '�� ����� ���������! ����� ���������...' WHERE `entry` = -1000378;
UPDATE `script_texts` SET `content_loc8` = '��, ������� ������ ������.' WHERE `entry` = -1000379;
UPDATE `script_texts` SET `content_loc8` = '������� ����`��� �������, $N ����� ��� �������! $N, � ������, ������� ����������� ���� ��������.' WHERE `entry` = -1000380;

-- ���� ������ 4921 "��������� ��� �����"
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 10668;

-- ����������� ��������� ���� ������� ������.
-- �� �������, ������� �� ������
-- ���� � ���� �� ���� ���� �����-�� ������� ������ ���������, ������� ������ ��� � �����, ��� � Request.
UPDATE `script_texts` SET `content_loc8` = '�� ������ ������� ������, ������!' WHERE `entry` = -1609000;
UPDATE `script_texts` SET `content_loc8` = '�����-�� � ��� ������ �����... ����������, ��� � ����...' WHERE `entry` = -1609001;
UPDATE `script_texts` SET `content_loc8` = '������ ��� ������������ ���������!' WHERE `entry` = -1609016;
UPDATE `script_texts` SET `content_loc8` = '� ���!' WHERE `entry` IN (1609012, 1609008);
UPDATE `script_texts` SET `content_loc8` = '� ������� ���� ������� � ������� ��� ��������� �����!' WHERE `entry` = -1609005;
UPDATE `script_texts` SET `content_loc8` = '��� ��������' WHERE `entry` = -1609080;
UPDATE `script_texts` SET `content_loc8` = '������� ���� ����, $n, ��� ��� ��� ����, ����� �� ������ ��������!' WHERE `entry` = -1609081;
UPDATE `script_texts` SET `content_loc8` = '�� ����� ����.' WHERE `entry` = -1609083;

-- Criteria data for achievement 'Wrecking Ball'
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (3368, 3369, 3370, 12578, 7623, 3371);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3368, 3369, 3370, 12578, 7623, 3371);
INSERT INTO `achievement_criteria_data`(`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3368,2,0,0,''),
(3369,2,0,0,''),
(3370,2,0,0,''),
(12578,2,0,0,''),
(7623,2,0,0,''),
(3371,2,0,0,'');

-- Fix OfferRewardText for quest "Warsong Supplies"
UPDATE `quest_template` SET `OfferRewardText`='Excellent, $N. You''ve saved me a lot of work!$b$bBut don''t think that I''m not grateful!' WHERE `Id`=6571;