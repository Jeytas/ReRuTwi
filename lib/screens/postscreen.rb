def postscreen
  background aliceblue
  flow margin: 10 do
    background lightcoral
    button "Exit", margin: 5, :right => 5 do exit() end
    button "Home", margin: 5 do visit "/home" end
    button "View", margin: 5 do visit "/view" end
  end

  stack margin: 10 do
    background deepskyblue
    tagline "Post a tweet"
  end

  stack margin: 10 do
    background deepskyblue
    @tweet = edit_box ""
    size   = para "Tweet size: 0"
    button "Post" do
      $client.update @tweet.text
    end
    button "Check tweet size" do
      size.replace "Tweet size: #{@tweet.text.size}"
    end
  end
end
