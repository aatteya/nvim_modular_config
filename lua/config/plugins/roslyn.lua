return {
	'seblyng/roslyn.nvim',
  ft = {'cs', 'razor' },
  dependencies = {
    'saghen/blink.cmp',
  },
  opts = {
    config = {
      capabilities = require('blink.cmp').get_lsp_capabilities(),
      settings = {
        ["csharp|inlay_hints"] = {
          csharp_enably_inlay_hints_for_implicit_object_creation = true,
          csharp_enably_inlay_hints_for_implicit_variable_types = true,
          csharp_enably_inlay_hints_for_lambda_parameter_types = true,
          csharp_enably_inlay_hints_for_types = true,
          csharp_enably_inlay_hints_for_indexer_parameters = true,
          csharp_enably_inlay_hints_for_literal_parameters = true,
          csharp_enably_inlay_hints_for_object_creation_parameters = true,
          csharp_enably_inlay_hints_for_other_parameters = true,
          csharp_enably_inlay_hints_for_parameters = true,
          dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
          dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
        },
        ["csharp|code_lens"] = {
          dotnet_enable_references_code_lens = true,
        },
      },
    },
  },
}
