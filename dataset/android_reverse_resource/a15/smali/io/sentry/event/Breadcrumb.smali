.class public Lio/sentry/event/Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/event/Breadcrumb$Type;,
        Lio/sentry/event/Breadcrumb$Level;
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final level:Lio/sentry/event/Breadcrumb$Level;

.field private final message:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;

.field private final type:Lio/sentry/event/Breadcrumb$Type;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    if-ne p0, p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 184
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 186
    check-cast v0, Lio/sentry/event/Breadcrumb;

    .line 187
    .local v0, "that":Lio/sentry/event/Breadcrumb;
    iget-object v3, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    iget-object v4, v0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    iget-object v4, v0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    iget-object v4, v0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    iget-object v4, v0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getLevel()Lio/sentry/event/Breadcrumb$Level;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Lio/sentry/event/Breadcrumb$Type;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
