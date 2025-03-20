.class public Lcom/fsck/k9/search/SearchAccount;
.super Ljava/lang/Object;
.source "SearchAccount.java"

# interfaces
.implements Lcom/fsck/k9/BaseAccount;


# static fields
.field public static final ALL_MESSAGES:Ljava/lang/String; = "all_messages"

.field public static final UNIFIED_INBOX:Ljava/lang/String; = "unified_inbox"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mSearch:Lcom/fsck/k9/search/LocalSearch;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "search"    # Lcom/fsck/k9/search/LocalSearch;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided LocalSearch was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/search/SearchAccount;->mId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/fsck/k9/search/SearchAccount;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 55
    iput-object p3, p0, Lcom/fsck/k9/search/SearchAccount;->mDescription:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/fsck/k9/search/SearchAccount;->mEmail:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static createAllMessagesAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const v2, 0x7f070337

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "tmpSearch":Lcom/fsck/k9/search/LocalSearch;
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SEARCHABLE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v3, "1"

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 27
    new-instance v2, Lcom/fsck/k9/search/SearchAccount;

    const-string v3, "all_messages"

    const v4, 0x7f070336

    .line 28
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fsck/k9/search/SearchAccount;-><init>(Ljava/lang/String;Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v2
.end method

.method public static createUnifiedInboxAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const v2, 0x7f070275

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "tmpSearch":Lcom/fsck/k9/search/LocalSearch;
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->INTEGRATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v3, "1"

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 37
    new-instance v2, Lcom/fsck/k9/search/SearchAccount;

    const-string v3, "unified_inbox"

    const v4, 0x7f070274

    .line 38
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fsck/k9/search/SearchAccount;-><init>(Ljava/lang/String;Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v2
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/search/SearchAccount;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/search/SearchAccount;->mEmail:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fsck/k9/search/SearchAccount;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fsck/k9/search/SearchAccount;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fsck/k9/search/SearchAccount;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fsck/k9/search/SearchAccount;->mDescription:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public declared-synchronized setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/search/SearchAccount;->mEmail:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
