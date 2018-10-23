visitor
visitEssRefuelling: anEssRefuelling
	self
		assert: anEssRefuelling date isNotNil description: 'EssRefuelling>>#date can not be nil at xml exportation.';
		assert: anEssRefuelling volume isNotNil description: 'EssRefuelling>>#volume can not be nil at xml exportation.';
		assert: anEssRefuelling cost isNotNil description: 'EssRefuelling>>#cost can not be nil at xml exportation.'.
	xmlWriter tag: #refuelling with: [ 
		xmlWriter
			tag: #date with: anEssRefuelling date mmddyyyy;
			tag: #volume with: anEssRefuelling volume value asString;
			tag: #cost with: anEssRefuelling cost asString.
		anEssRefuelling km ifNotNil: [ 
			xmlWriter tag: #km with: anEssRefuelling km value asString ] ]