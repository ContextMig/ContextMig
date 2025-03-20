.class public Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;
.super Ljava/lang/Object;
.source "PaperDocChangeSubscriptionDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final eventUuid:Ljava/lang/String;

.field protected final newSubscriptionLevel:Ljava/lang/String;

.field protected final previousSubscriptionLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventUuid"    # Ljava/lang/String;
    .param p2, "newSubscriptionLevel"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventUuid"    # Ljava/lang/String;
    .param p2, "newSubscriptionLevel"    # Ljava/lang/String;
    .param p3, "previousSubscriptionLevel"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventUuid\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newSubscriptionLevel\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p1, p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    .line 117
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;
    :cond_6
    move v1, v2

    .line 123
    goto :goto_0
.end method

.method public getEventUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSubscriptionLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSubscriptionLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 98
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
