.class public Lcom/fsck/k9/activity/FolderInfoHolder;
.super Ljava/lang/Object;
.source "FolderInfoHolder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fsck/k9/activity/FolderInfoHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public flaggedMessageCount:I

.field public folder:Lcom/fsck/k9/mail/Folder;

.field public lastCheckFailed:Z

.field public lastChecked:J

.field public loading:Z

.field public moreMessages:Z

.field public name:Ljava/lang/String;

.field public pushActive:Z

.field public status:Ljava/lang/String;

.field public unreadMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    .line 16
    iput v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    .line 16
    iput v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null context given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/FolderInfoHolder;->populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "account"    # Lcom/fsck/k9/Account;
    .param p4, "unreadCount"    # I

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    .line 16
    iput v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/FolderInfoHolder;->populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;I)V

    .line 67
    return-void
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const v1, 0x7f07038f

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 108
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 110
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const v1, 0x7f070387

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const v1, 0x7f07038d

    .line 115
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 114
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const v1, 0x7f070391

    .line 118
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 117
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    const v1, 0x7f070389

    .line 121
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 120
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    const v1, 0x7f07038b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    const v1, 0x7f07038a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto/16 :goto_0

    .line 128
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_6
    move-object v0, p2

    .restart local v0    # "displayName":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private truncateStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mess"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x1b

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_0
    return-object p1
.end method


# virtual methods
.method public compareTo(Lcom/fsck/k9/activity/FolderInfoHolder;)I
    .locals 3
    .param p1, "o"    # Lcom/fsck/k9/activity/FolderInfoHolder;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    .line 36
    .local v1, "s1":Ljava/lang/String;
    iget-object v2, p1, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    .line 38
    .local v2, "s2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 42
    .end local v0    # "ret":I
    :goto_0
    return v0

    .restart local v0    # "ret":I
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/fsck/k9/activity/FolderInfoHolder;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/FolderInfoHolder;->compareTo(Lcom/fsck/k9/activity/FolderInfoHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 26
    instance-of v0, p1, Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    check-cast p1, Lcom/fsck/k9/activity/FolderInfoHolder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 78
    iput-object p2, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    .line 79
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getLastUpdate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->lastChecked:J

    .line 82
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderInfoHolder;->truncateStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->status:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/fsck/k9/activity/FolderInfoHolder;->getDisplayName(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p2}, Lcom/fsck/k9/activity/FolderInfoHolder;->setMoreMessagesFromFolder(Lcom/fsck/k9/mailstore/LocalFolder;)V

    .line 86
    return-void
.end method

.method public populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "account"    # Lcom/fsck/k9/Account;
    .param p4, "unreadCount"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/FolderInfoHolder;->populate(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;)V

    .line 71
    iput p4, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    .line 72
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    .line 74
    return-void
.end method

.method public setMoreMessagesFromFolder(Lcom/fsck/k9/mailstore/LocalFolder;)V
    .locals 1
    .param p1, "folder"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalFolder;->hasMoreMessages()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 136
    return-void
.end method
