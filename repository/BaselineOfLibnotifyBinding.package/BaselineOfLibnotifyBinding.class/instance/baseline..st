baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec package: 'LibnotifyBinding'.
			spec
				package: 'LibnotifyUIManager' with: [ spec requires: 'LibnotifyBinding' ];
				postLoadDoIt: #installUIManager
		].
	spec
		group: 'default' with: #('LibnotifyBinding');
		group: 'ui-manager' with: #('default' 'LibnotifyUIManager')