import Fluent

struct SeedEH23Data: AsyncMigration {
	func prepare(on database: Database) async throws {

		let references = [
			Reference(title: "T-01", website: ""),
			Reference(title: "T-02", website: ""),
			Reference(title: "T-11", website: ""),
			Reference(title: "T-21", website: ""),
			Reference(title: "T-31", website: ""),
			Reference(title: "T-41", website: ""),
		]

		for reference in references {
			try await reference.save(on: database)
		}
	}

	func revert(on database: Database) async throws {

	}
}
