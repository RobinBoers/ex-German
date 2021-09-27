defmodule GermanTest do
  use ExUnit.Case
  doctest German

  # können
  test "ich kann" do
    assert German.Verbs.get({:ich, 'können'}) == 'kann'
  end
  test "du kannst" do
    assert German.Verbs.get({:du, 'können'}) == 'kannst'
  end
  test "er/sie/es kann" do
    assert German.Verbs.get({:er, 'können'}) == 'kann'
    assert German.Verbs.get({:sie, 'können'}) == 'kann'
    assert German.Verbs.get({:es, 'können'}) == 'kann'
  end
  test "wir können" do
    assert German.Verbs.get({:wir, 'können'}) == 'können'
  end
  test "ihr könnt" do
    assert German.Verbs.get({:ihr, 'können'}) == 'könnt'
  end
  test "sie/Sie können" do
    assert German.Verbs.get({:siemv, 'können'}) == 'können'
    assert German.Verbs.get({:Sie, 'können'}) == 'können'
  end

  # dürfen
  test "ich darf" do
    assert German.Verbs.get({:ich, 'dürfen'}) == 'darf'
  end
  test "du darfst" do
    assert German.Verbs.get({:du, 'dürfen'}) == 'darfst'
  end
  test "er/sie/es darf" do
    assert German.Verbs.get({:er, 'dürfen'}) == 'darf'
    assert German.Verbs.get({:sie, 'dürfen'}) == 'darf'
    assert German.Verbs.get({:es, 'dürfen'}) == 'darf'
  end
  test "wir dürfen" do
    assert German.Verbs.get({:wir, 'dürfen'}) == 'dürfen'
  end
  test "ihr dürft" do
    assert German.Verbs.get({:ihr, 'dürfen'}) == 'dürft'
  end
  test "sie/Sie dürfen" do
    assert German.Verbs.get({:siemv, 'dürfen'}) == 'dürfen'
    assert German.Verbs.get({:Sie, 'dürfen'}) == 'dürfen'
  end

  # mögen
  test "ich mag" do
    assert German.Verbs.get({:ich, 'mögen'}) == 'mag'
  end
  test "du mag" do
    assert German.Verbs.get({:du, 'mögen'}) == 'magst'
  end
  test "er/sie/es mag" do
    assert German.Verbs.get({:er, 'mögen'}) == 'mag'
    assert German.Verbs.get({:sie, 'mögen'}) == 'mag'
    assert German.Verbs.get({:es, 'mögen'}) == 'mag'
  end
  test "wir mögen" do
    assert German.Verbs.get({:wir, 'mögen'}) == 'mögen'
  end
  test "ihr mögt" do
    assert German.Verbs.get({:ihr, 'mögen'}) == 'mögt'
  end
  test "sie/Sie mögen" do
    assert German.Verbs.get({:siemv, 'mögen'}) == 'mögen'
    assert German.Verbs.get({:Sie, 'mögen'}) == 'mögen'
  end

  # wissen
  test "ich weiB" do
    assert German.Verbs.get({:ich, 'wissen'}) == 'weiB'
  end
  test "du weiBt" do
    assert German.Verbs.get({:du, 'wissen'}) == 'weiBt'
  end
  test "er/sie/es weiB" do
    assert German.Verbs.get({:er, 'wissen'}) == 'weiB'
    assert German.Verbs.get({:sie, 'wissen'}) == 'weiB'
    assert German.Verbs.get({:es, 'wissen'}) == 'weiB'
  end
  test "wir wissen" do
    assert German.Verbs.get({:wir, 'wissen'}) == 'wissen'
  end
  test "ihr wisst" do
    assert German.Verbs.get({:ihr, 'wissen'}) == 'wisst'
  end
  test "sie/Sie wissen" do
    assert German.Verbs.get({:siemv, 'wissen'}) == 'wissen'
    assert German.Verbs.get({:Sie, 'wissen'}) == 'wissen'
  end

  # sollen
  test "ich soll" do
    assert German.Verbs.get({:ich, 'sollen'}) == 'soll'
  end
  test "du sollst" do
    assert German.Verbs.get({:du, 'sollen'}) == 'sollst'
  end
  test "er/sie/es soll" do
    assert German.Verbs.get({:er, 'sollen'}) == 'soll'
    assert German.Verbs.get({:sie, 'sollen'}) == 'soll'
    assert German.Verbs.get({:es, 'sollen'}) == 'soll'
  end
  test "wir sollen" do
    assert German.Verbs.get({:wir, 'sollen'}) == 'sollen'
  end
  test "ihr sollt" do
    assert German.Verbs.get({:ihr, 'sollen'}) == 'sollt'
  end
  test "sie/Sie sollen" do
    assert German.Verbs.get({:siemv, 'sollen'}) == 'sollen'
    assert German.Verbs.get({:Sie, 'sollen'}) == 'sollen'
  end

  # müssen
  test "ich muss" do
    assert German.Verbs.get({:ich, 'müssen'}) == 'muss'
  end
  test "du musst" do
    assert German.Verbs.get({:du, 'müssen'}) == 'musst'
  end
  test "er/sie/es muss" do
    assert German.Verbs.get({:er, 'müssen'}) == 'muss'
    assert German.Verbs.get({:sie, 'müssen'}) == 'muss'
    assert German.Verbs.get({:es, 'müssen'}) == 'muss'
  end
  test "wir müssen" do
    assert German.Verbs.get({:wir, 'müssen'}) == 'müssen'
  end
  test "ihr müsst" do
    assert German.Verbs.get({:ihr, 'müssen'}) == 'müsst'
  end
  test "sie/Sie müssen" do
    assert German.Verbs.get({:siemv, 'müssen'}) == 'müssen'
    assert German.Verbs.get({:Sie, 'müssen'}) == 'müssen'
  end

  # müssen
  test "ich will" do
    assert German.Verbs.get({:ich, 'wollen'}) == 'will'
  end
  test "du willst" do
    assert German.Verbs.get({:du, 'wollen'}) == 'willst'
  end
  test "er/sie/es will" do
    assert German.Verbs.get({:er, 'wollen'}) == 'will'
    assert German.Verbs.get({:sie, 'wollen'}) == 'will'
    assert German.Verbs.get({:es, 'wollen'}) == 'will'
  end
  test "wir wollen" do
    assert German.Verbs.get({:wir, 'wollen'}) == 'wollen'
  end
  test "ihr wollt" do
    assert German.Verbs.get({:ihr, 'wollen'}) == 'wollt'
  end
  test "sie/Sie wollen" do
    assert German.Verbs.get({:siemv, 'wollen'}) == 'wollen'
    assert German.Verbs.get({:Sie, 'wollen'}) == 'wollen'
  end

  # möchten
  test "ich möchte" do
    assert German.Verbs.get({:ich, 'möchten'}) == 'möchte'
  end
  test "du möchtest" do
    assert German.Verbs.get({:du, 'möchten'}) == 'möchtest'
  end
  test "er/sie/es möchte" do
    assert German.Verbs.get({:er, 'möchten'}) == 'möchte'
    assert German.Verbs.get({:sie, 'möchten'}) == 'möchte'
    assert German.Verbs.get({:es, 'möchten'}) == 'möchte'
  end
  test "wir möchten" do
    assert German.Verbs.get({:wir, 'möchten'}) == 'möchten'
  end
  test "ihr möchtet" do
    assert German.Verbs.get({:ihr, 'möchten'}) == 'möchtet'
  end
  test "sie/Sie möchten" do
    assert German.Verbs.get({:siemv, 'möchten'}) == 'möchten'
    assert German.Verbs.get({:Sie, 'möchten'}) == 'möchten'
  end

  # past participle

  test "past participle -ieren" do
    assert German.PastParticiple.get('fotografieren') == 'fotografiert'
  end

  test "past participle -t or -d" do
    assert German.PastParticiple.get('arbeiten') == 'gearbeitet'
    assert German.PastParticiple.get('reden') == 'geredet'
  end

  test "past participle -nen or -men" do
    assert German.PastParticiple.get('öffnen') == 'geöffnet'
    assert German.PastParticiple.get('atmen') == 'geatmet'
  end

  test "warnen and lernen are exeptions" do
    assert German.PastParticiple.get('warnen') == 'gewarnt'
    assert German.PastParticiple.get('lernen') == 'gelernt'
  end

  # regular verbs

  test "gehen" do
    assert German.Verbs.get({:ich, 'gehen'}) == 'gehe'
    assert German.Verbs.get({:du, 'gehen'}) == 'gehst'
  end

  test "reisen" do
    assert German.Verbs.get({:ich, 'reisen'}) == 'reise'
    assert German.Verbs.get({:du, 'reisen'}) == 'reist'
  end

  test "arbeiten" do
    assert German.Verbs.get({:ich, 'arbeiten'}) == 'arbeite'
    assert German.Verbs.get({:du, 'arbeiten'}) == 'arbeitest'
  end

  # irregular verbs

  test "haben" do
    assert German.Verbs.get({:ich, 'haben'}) == 'habe'
    assert German.Verbs.get({:ihr, 'haben'}) == 'habt'
  end

  test "sein" do
    assert German.Verbs.get({:du, 'sein'}) == 'bist'
    assert German.Verbs.get({:wir, 'sein'}) == 'sind'
  end

end
