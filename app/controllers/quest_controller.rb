class QuestController < ApplicationController
    def getall
        all = {}
        Npc.all.each do |npc|
            res = []
            Quest.where(npc_id: npc.id).each do |quest|
                @a = {
                    name: quest.name,
                    body: quest.body,
                    answers: []
                }

                answers = []
                Answer.where(quest_id: quest.id).each do |answer|
                    answers.push(answer.body)
                end
                @a['answers'] = answers
                res.push(@a)
            end

            all[npc.id] = ({
                name: npc.name,
                questes: res
            })
        end

        render :json => all
    end
end
