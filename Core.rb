require 'pp'

class Core
  def run
    list_get
    get_id
    list_create
    add
  end

  def list_get
    $member_text = $client.list_members($summorner_name,$from_list_name).attrs[:users]
  end

  def get_id
    $new_members = []

    $member_text.each do |user|
      $new_members.push user[:id]
    end
  end

  def list_create
    $client.create_list($to_list_name)
  end

  def add
    $client.add_list_members($to_list_name,$new_members)
  end
end