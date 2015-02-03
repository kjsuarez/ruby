week=[4,9,5,2,8,4,100]
def stock_picker week
buyCounter=0
sellCounter=0
bestProfit=0
bestBuy=0
bestSell=0
while buyCounter<week.length-1
	buy=week[buyCounter]
	buyCounter+=1
	sellCounter=buyCounter
	while sellCounter<week.length
		sell=week[sellCounter]
		sellCounter+=1
		profit=sell-buy
		if profit>bestProfit
			bestProfit=profit
			bestBuy=buy
			bestSell=sell
			buyDay=buyCounter
			sellDay=sellCounter
		end
	end
end
p week
p "for best result buy on day "+(buyDay-1).to_s+" and sell on day "+(sellDay-1).to_s
p "best profit: $"+bestSell.to_s+" - $"+bestBuy.to_s+" = $"+bestProfit.to_s	
end

stock_picker week


