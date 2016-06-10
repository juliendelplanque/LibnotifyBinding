baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'LibnotifyBinding' with: [
			spec repository: 'github://juliendelplanque/LibnotifyBinding/repository' ] ].