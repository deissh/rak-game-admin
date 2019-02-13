class QuestController < ApplicationController
    def getall
        all = []
        Npc.all.each do |npc|
            res = []
            Quest.where(npc_id: npc.id).each do |quest|
                @a = {
                    id: quest.id,
                    name: quest.name,
                    body: quest.body,
                    answers: []
                }
                @a['answers'] = Answer.where(quest_id: quest.id)
                res.push(@a)
            end

            all.push({
                id: npc.id,
                name: npc.name,
                questes: res
            })
        end

        render :json => { count: all.count, rows: all }
    end
end
