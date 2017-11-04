# Main Client, execute this file


class PaperMachine
								def initialize(*args)
																@mid_parser = MidiParser.new()
																@generator = ChartGenerator.new()
								end

								def parse(mid_file, out_path)
																chart_array = @mid_parser.parse(mid_file)
																@generator.generate(chart_array)
																@generator.save(out_path)
								end
end



# Run!
pm = PaperMachine.new()
pm.parse('file.mid', out.png)
