.class public Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;
.super Ljava/lang/Object;
.source "PaperDocEditCommentDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final commentText:Ljava/lang/String;

.field protected final eventUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventUuid"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventUuid"    # Ljava/lang/String;
    .param p2, "commentText"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventUuid\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    .line 97
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;
    :cond_5
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public getCommentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->eventUuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;->commentText:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 83
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
