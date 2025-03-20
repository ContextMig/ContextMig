.class Lcom/fsck/k9/mailstore/LocalStore$19;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->createFolders(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$foldersToCreate:Ljava/util/List;

.field final synthetic val$visibleLimit:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->val$foldersToCreate:Ljava/util/List;

    iput p3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->val$visibleLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$19;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 910
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->val$foldersToCreate:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 911
    .local v0, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    .line 917
    .local v2, "prefHolder":Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalStore;->access$000(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fsck/k9/Account;->isSpecialFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    iput-boolean v4, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->inTopGroup:Z

    .line 919
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 920
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalStore;->access$000(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 921
    iput-boolean v4, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->integrate:Z

    .line 922
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 923
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 928
    :goto_1
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalStore;->access$000(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    .line 929
    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalStore;->access$000(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 930
    :cond_0
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 935
    :cond_1
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->refresh(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;)V

    .line 937
    const-string v7, "INSERT INTO folders (name, visible_limit, top_group, display_class, poll_class, notify_class, push_class, integrate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v3, 0x8

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v5

    iget v3, p0, Lcom/fsck/k9/mailstore/LocalStore$19;->val$visibleLimit:I

    .line 939
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    const/4 v9, 0x2

    iget-boolean v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->inTopGroup:Z

    if-eqz v3, :cond_4

    move v3, v4

    .line 940
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x3

    iget-object v9, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 941
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x4

    iget-object v9, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 942
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 943
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x6

    iget-object v9, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 944
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x7

    iget-boolean v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->integrate:Z

    if-eqz v3, :cond_5

    move v3, v4

    .line 945
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    .line 937
    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 925
    :cond_2
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_1

    .line 932
    :cond_3
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_2

    :cond_4
    move v3, v5

    .line 939
    goto :goto_3

    :cond_5
    move v3, v5

    .line 944
    goto :goto_4

    .line 949
    .end local v0    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "prefHolder":Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;
    :cond_6
    const/4 v3, 0x0

    return-object v3
.end method
