.class public Lio/sentry/event/helper/ContextBuilderHelper;
.super Ljava/lang/Object;
.source "ContextBuilderHelper.java"

# interfaces
.implements Lio/sentry/event/helper/EventBuilderHelper;


# instance fields
.field private sentryClient:Lio/sentry/SentryClient;


# direct methods
.method public constructor <init>(Lio/sentry/SentryClient;)V
    .locals 0
    .param p1, "sentryClient"    # Lio/sentry/SentryClient;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/sentry/event/helper/ContextBuilderHelper;->sentryClient:Lio/sentry/SentryClient;

    .line 31
    return-void
.end method

.method private fromUser(Lio/sentry/event/User;)Lio/sentry/event/interfaces/UserInterface;
    .locals 6
    .param p1, "user"    # Lio/sentry/event/User;

    .prologue
    .line 67
    new-instance v0, Lio/sentry/event/interfaces/UserInterface;

    invoke-virtual {p1}, Lio/sentry/event/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/event/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/sentry/event/User;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/event/User;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/event/User;->getData()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lio/sentry/event/interfaces/UserInterface;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public helpBuildingEvent(Lio/sentry/event/EventBuilder;)V
    .locals 9
    .param p1, "eventBuilder"    # Lio/sentry/event/EventBuilder;

    .prologue
    .line 35
    iget-object v7, p0, Lio/sentry/event/helper/ContextBuilderHelper;->sentryClient:Lio/sentry/SentryClient;

    invoke-virtual {v7}, Lio/sentry/SentryClient;->getContext()Lio/sentry/context/Context;

    move-result-object v1

    .line 37
    .local v1, "context":Lio/sentry/context/Context;
    invoke-virtual {v1}, Lio/sentry/context/Context;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "breadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/event/Breadcrumb;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Lio/sentry/event/EventBuilder;->withBreadcrumbs(Ljava/util/List;)Lio/sentry/event/EventBuilder;

    .line 42
    :cond_0
    invoke-virtual {v1}, Lio/sentry/context/Context;->getUser()Lio/sentry/event/User;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 43
    invoke-virtual {v1}, Lio/sentry/context/Context;->getUser()Lio/sentry/event/User;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/sentry/event/helper/ContextBuilderHelper;->fromUser(Lio/sentry/event/User;)Lio/sentry/event/interfaces/UserInterface;

    move-result-object v7

    invoke-virtual {p1, v7}, Lio/sentry/event/EventBuilder;->withSentryInterface(Lio/sentry/event/interfaces/SentryInterface;)Lio/sentry/event/EventBuilder;

    .line 46
    :cond_1
    invoke-virtual {v1}, Lio/sentry/context/Context;->getTags()Ljava/util/Map;

    move-result-object v6

    .line 47
    .local v6, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 48
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Lio/sentry/event/EventBuilder;->withTag(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    goto :goto_0

    .line 53
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Lio/sentry/context/Context;->getExtra()Ljava/util/Map;

    move-result-object v4

    .line 54
    .local v4, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 55
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lio/sentry/event/EventBuilder;->withExtra(Ljava/lang/String;Ljava/lang/Object;)Lio/sentry/event/EventBuilder;

    goto :goto_1

    .line 59
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
