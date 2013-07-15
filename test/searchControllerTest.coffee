describe "searchController", ()->
  @server

  beforeEach ()->
    @server = sinon.fakeServer.create()
    @scope = sinon.spy()
    new searchController(@scope)

  afterEach ()->
    @server.restore()

  it "calls search endpoint on search", ()->
    @server.respondWith "GET", "/search.json",
      [200,
       "Content-Type": "application/json",
       JSON.stringify name: "Fake Name", twitterId: "@fake", active: true]

    @scope.search()
    @server.respond()

    expect(@server.requests.length).toEqual(1)


