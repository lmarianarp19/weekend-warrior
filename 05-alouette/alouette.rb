class Alouette
  def self.lines_for_verse(verse_num)
    # part_repeat = ["la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!", "Je te plumerai le dos."  ]
    part_repeat = ["la tête!", "le bec!", "les yeux!", "le cou!", "les ailes!", "les pattes!", "la queue!", "le dos!", "te plumerai le dos."]
    frases = []
    while verse_num >= 0
      frases << "Et " + part_repeat[verse_num]
      verse_num -= 1
    end
    return frases
  end

  def self.verse(verse_num)
    part_repeat = ["la tête.", "le bec.", "les yeux.", "le cou.", "les ailes.", "les pattes.", "la queue.", "le dos.", "te plumerai le dos."]
    #before = "Alouette, gentille alouette," + "\n" + "Alouette, je te plumerai." + "Je te plumerai" +""
    before = "Je te plumerai #{part_repeat[verse_num]}"+"\n"
    after = "Alouette!" +"\n"+ "Alouette!" +"\n" +"A-a-a-ah"
    before =  before * 2
    while verse_num >= 0
      before = before +( (lines_for_verse(verse_num)[0] + "\n") * 2)
      verse_num -= 1
    end
    before += after
    return before
  end

  def self.sing
    before = "Alouette, gentille alouette," + "\n" + "Alouette, je te plumerai."
    i = 0
    song = ""

    while i < 8
      song += before  +"\n"+"\n" + verse(i) + "\n"+ "\n"
      i += 1
    end
    return song  + before
  end
end
