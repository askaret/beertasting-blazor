namespace Beertasting.ViewModels;
public record ChatLogEntry(string Nick, string Text, DateTime Timestamp, int beerOrderNumber)
{
	public override string ToString() => 
		$"[{Timestamp.ToShortTimeString()} | #{beerOrderNumber} | {System.Net.WebUtility.HtmlEncode(Nick)}] {Text}";
	public string Prefix() =>
		$"""<span class="chat-line">[<span class="chat-timestamp">{Timestamp.ToShortTimeString()}</span> | <span class="chat-beernumber">#{beerOrderNumber}</span> | <span class="chat-nick">{System.Net.WebUtility.HtmlEncode(Nick)}</span>]</span>""";
};
