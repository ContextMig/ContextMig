.class public Lcom/fsck/k9/helper/FileBrowserHelper;
.super Ljava/lang/Object;
.source "FileBrowserHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;
    }
.end annotation


# static fields
.field private static final PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

.field private static sInstance:Lcom/fsck/k9/helper/FileBrowserHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "org.openintents.action.PICK_DIRECTORY"

    aput-object v2, v1, v4

    const-string v2, "file://"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.estrongs.action.PICK_DIRECTORY"

    aput-object v2, v1, v4

    const-string v2, "file://"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.intent.action.PICK"

    aput-object v2, v1, v4

    const-string v2, "folder://"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "com.androidworkz.action.PICK_DIRECTORY"

    aput-object v3, v2, v4

    const-string v3, "file://"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/fsck/k9/helper/FileBrowserHelper;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/fsck/k9/helper/FileBrowserHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/helper/FileBrowserHelper;->sInstance:Lcom/fsck/k9/helper/FileBrowserHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/fsck/k9/helper/FileBrowserHelper;

    invoke-direct {v0}, Lcom/fsck/k9/helper/FileBrowserHelper;-><init>()V

    sput-object v0, Lcom/fsck/k9/helper/FileBrowserHelper;->sInstance:Lcom/fsck/k9/helper/FileBrowserHelper;

    .line 56
    :cond_0
    sget-object v0, Lcom/fsck/k9/helper/FileBrowserHelper;->sInstance:Lcom/fsck/k9/helper/FileBrowserHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showPathTextInput(Landroid/app/Activity;Ljava/io/File;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V
    .locals 4
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "startPath"    # Ljava/io/File;
    .param p3, "callback"    # Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    .prologue
    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07014c

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    const v2, 0x7f07014b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "input":Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 151
    const v2, 0x7f0702eb

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/helper/FileBrowserHelper$1;

    invoke-direct {v3, p0, v1, p3}, Lcom/fsck/k9/helper/FileBrowserHelper$1;-><init>(Lcom/fsck/k9/helper/FileBrowserHelper;Landroid/widget/EditText;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    const v2, 0x7f070153

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/helper/FileBrowserHelper$2;

    invoke-direct {v3, p0, p3}, Lcom/fsck/k9/helper/FileBrowserHelper$2;-><init>(Lcom/fsck/k9/helper/FileBrowserHelper;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 166
    return-void
.end method


# virtual methods
.method public showFileBrowserActivity(Landroid/app/Activity;Ljava/io/File;ILcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)Z
    .locals 8
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "startPath"    # Ljava/io/File;
    .param p3, "requestcode"    # I
    .param p4, "callback"    # Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    .prologue
    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, "success":Z
    if-nez p2, :cond_0

    .line 80
    new-instance p2, Ljava/io/File;

    .end local p2    # "startPath":Ljava/io/File;
    invoke-static {}, Lcom/fsck/k9/K9;->getAttachmentDefaultPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local p2    # "startPath":Ljava/io/File;
    :cond_0
    const/4 v3, 0x0

    .line 85
    .local v3, "listIndex":I
    :cond_1
    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget-object v2, v6, v7

    .line 86
    .local v2, "intentAction":Ljava/lang/String;
    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-object v5, v6, v7

    .line 87
    .local v5, "uriPrefix":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    :try_start_0
    invoke-virtual {p1, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v4, 0x1

    .line 97
    :goto_0
    if-nez v4, :cond_2

    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_1

    .line 99
    :cond_2
    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    array-length v6, v6

    if-ne v3, v6, :cond_3

    .line 101
    invoke-direct {p0, p1, p2, p4}, Lcom/fsck/k9/helper/FileBrowserHelper;->showPathTextInput(Landroid/app/Activity;Ljava/io/File;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V

    .line 102
    const/4 v4, 0x0

    .line 105
    :cond_3
    return v4

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public showFileBrowserActivity(Landroid/app/Fragment;Ljava/io/File;ILcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)Z
    .locals 8
    .param p1, "c"    # Landroid/app/Fragment;
    .param p2, "startPath"    # Ljava/io/File;
    .param p3, "requestcode"    # I
    .param p4, "callback"    # Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 111
    .local v4, "success":Z
    if-nez p2, :cond_0

    .line 112
    new-instance p2, Ljava/io/File;

    .end local p2    # "startPath":Ljava/io/File;
    invoke-static {}, Lcom/fsck/k9/K9;->getAttachmentDefaultPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local p2    # "startPath":Ljava/io/File;
    :cond_0
    const/4 v3, 0x0

    .line 117
    .local v3, "listIndex":I
    :cond_1
    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget-object v2, v6, v7

    .line 118
    .local v2, "intentAction":Ljava/lang/String;
    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-object v5, v6, v7

    .line 119
    .local v5, "uriPrefix":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    :try_start_0
    invoke-virtual {p1, v1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v4, 0x1

    .line 129
    :goto_0
    if-nez v4, :cond_2

    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_1

    .line 131
    :cond_2
    sget-object v6, Lcom/fsck/k9/helper/FileBrowserHelper;->PICK_DIRECTORY_INTENTS:[[Ljava/lang/String;

    array-length v6, v6

    if-ne v3, v6, :cond_3

    .line 133
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, p2, p4}, Lcom/fsck/k9/helper/FileBrowserHelper;->showPathTextInput(Landroid/app/Activity;Ljava/io/File;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V

    .line 134
    const/4 v4, 0x0

    .line 137
    :cond_3
    return v4

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
