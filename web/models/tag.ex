defmodule Iskospace.Tag do
	use Iskospace.Web, :model

	schema "tags" do
		field :tag, :string
		belongs_to :posts, Iskospace.Post

		timestamps()
	end

	def changeset(struct, params \\ %{}) do
		struct
		|> cast(params, [:tag])
		|> validate_required([:tag])
	end
end