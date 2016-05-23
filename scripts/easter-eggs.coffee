module.exports = (robot) ->
   lulz = ["you're funny af", "I'm rolling on the motherboard laughing rn", "can't breath fml",
           "no.", "srsly stop", "I cried"]
   a_words = ['a', 'abandon', 'able', 'ability', 'above', 'abuse', 'about', 'abroad', 'abstract',
              'abuse', 'academic', 'acceptance', 'accident', 'access', 'abstract', 'accompany',
              'account', 'accuse', 'acquit', 'ache', 'achieve', 'active', 'action', 'act', 'actor',
              'actress', 'add', 'addition', 'actually', 'actual', 'adjourn', 'admiration', 'administrate']
   f_words = ['fabric', 'face', 'facet', 'fact', 'faculty', 'fail', 'failure', 'faint', 'fair',
              'fake', 'fall', 'fame', 'false', 'family', 'famous', 'fan', 'fancy', 'far', 'farm',
              'fate', 'fast', 'fasten', 'father', 'fault', 'favor', 'favorite', 'fearful', 'fear',
              'feather', 'federal', 'feed', 'feel', 'feeling']
   l_words = ['label', 'labor', 'laboratory', 'lady', 'lake', 'lamp', 'land', 'landfill',
              'landing', 'landlord', 'lane', 'language', 'large', 'last', 'late', 'lately',
              'later', 'latter', 'laugh', 'launch', 'lavatory', 'lawyer', 'lay', 'layoff',
              'lead', 'leader', 'league', 'leaf', 'least', 'left', 'lecture']
   m_words = ['machine', 'mad', 'magazine', 'mail', 'main', 'maintain', 'major', 'male',
              'manager', 'manner', 'manner', 'manufacture', 'many', 'march', 'map', 'mark',
              'market', 'marry', 'marriage', 'match', 'mass', 'master', 'mate', 'material',
              'matter', 'mayor', 'meal', 'meanwhile', 'meat', 'measurement']
   o_words = ['oath', 'obey', 'object', 'objection', 'objective', 'obtain', 'occasionally',
              'occupation', 'occupy', 'occur', 'ocean', 'October', 'odd', 'odor', 'of', 'off',
              'offend', 'offense', 'offer', 'office', 'official', 'often', 'oil', 'oh', 'old',
              'on', 'once', 'one', 'oneself', 'only', 'onto']
   r_words = ['race', 'racial', 'radiation', 'radical', 'rage', 'rain', 'raise', 'range', 'rank',
              'rarely', 'rate', 'rather', 'rational', 'raw', 'reach', 'react', 'reaction', 'read',
              'reader', 'reading', 'ready', 'real', 'realistic', 'reality', 'realize', 'rear',
              'reason', 'reasonable', 'recall', 'receive', 'recent', 'reception', 'recession',
              'recognize', 'recover', 'record']

   robot.hear /lo([l])\1{1,}/i, (msg) ->
      lol = msg.match[0][2..]
      haha = Array(lol.length + 1).join "HA"
      msg.send "#{haha} " + msg.random lulz

   robot.hear /.*[lL1I\|]\s*\W?\s*[oO0]\s*\W?\s*[lL1I\|]\s*\W?.*/g, (msg) ->
      w1 = msg.random l_words
      w2 = msg.random o_words
      w3 = msg.random l_words
      msg.send "lol? Did you mean: " + w1 + " " + w2 + " " + w3 + "?"

   robot.hear /rofl/i, (msg) ->
      w1 = msg.random r_words
      w2 = msg.random o_words
      w3 = msg.random f_words
      w4 = msg.random l_words
      msg.send "rofl? Did you mean: " + w1 + " " + w2 + " " + w3 + " " + w4 + "?"

   robot.hear /lmao/i, (msg) ->
      w1 = msg.random l_words
      w2 = msg.random m_words
      w3 = msg.random a_words
      w4 = msg.random o_words
      msg.send "lmao? Did you mean: " + w1 + " " + w2 + " " + w3 + " " + w4 + "?"
