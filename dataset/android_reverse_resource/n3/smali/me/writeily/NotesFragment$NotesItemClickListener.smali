.class Lme/writeily/NotesFragment$NotesItemClickListener;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotesItemClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NotesFragment$NotesItemClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x719c8f46091c4458L    # 1.859728917348026E239

    const-string v2, "me/writeily/NotesFragment$NotesItemClickListener"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NotesFragment$NotesItemClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$NotesItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 346
    iput-object p1, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/NotesFragment;Lme/writeily/NotesFragment$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$NotesItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 346
    invoke-direct {p0, p1}, Lme/writeily/NotesFragment$NotesItemClickListener;-><init>(Lme/writeily/NotesFragment;)V

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$NotesItemClickListener;->$jacocoInit()[Z

    move-result-object v4

    .line 349
    iget-object v3, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v3}, Lme/writeily/NotesFragment;->access$700(Lme/writeily/NotesFragment;)Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    aput-boolean v9, v4, v9

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    aput-boolean v9, v4, v5

    .line 353
    iget-object v5, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v5, v3}, Lme/writeily/NotesFragment;->access$802(Lme/writeily/NotesFragment;Ljava/io/File;)Ljava/io/File;

    const/4 v5, 0x3

    aput-boolean v9, v4, v5

    .line 354
    iget-object v5, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v5, v3}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/4 v3, 0x4

    aput-boolean v9, v4, v3

    .line 387
    .local v1, "previewFirst":Z
    :goto_0
    const/16 v3, 0x14

    aput-boolean v9, v4, v3

    return-void

    .line 357
    .end local v1    # "previewFirst":Z
    :cond_0
    iget-object v3, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v3}, Lme/writeily/NotesFragment;->access$700(Lme/writeily/NotesFragment;)Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/4 v5, 0x5

    aput-boolean v9, v4, v5

    .line 359
    iget-object v5, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v5}, Lme/writeily/NotesFragment;->access$900(Lme/writeily/NotesFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    const v7, 0x7f0600ae

    invoke-virtual {v6, v7}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 363
    .restart local v1    # "previewFirst":Z
    if-eqz v1, :cond_3

    const/4 v5, 0x6

    aput-boolean v9, v4, v5

    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v5}, Lme/writeily/NotesFragment;->access$900(Lme/writeily/NotesFragment;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lme/writeily/PreviewActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    if-nez v3, :cond_1

    const/4 v5, 0x7

    aput-boolean v9, v4, v5

    .line 376
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v6, 0xd

    aput-boolean v9, v4, v6

    .line 377
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v6

    iget-object v7, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v7}, Lme/writeily/NotesFragment;->access$900(Lme/writeily/NotesFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lme/writeily/model/WriteilySingleton;->readFileUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    aput-boolean v9, v4, v6

    .line 378
    const-string v6, "md_preview_key"

    const-string v7, "\n-"

    const-string v8, "\n\n-"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const/16 v5, 0xf

    aput-boolean v9, v4, v5

    .line 382
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v5, "note_key"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v3, 0x11

    aput-boolean v9, v4, v3

    .line 384
    iget-object v3, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v3, v0}, Lme/writeily/NotesFragment;->startActivity(Landroid/content/Intent;)V

    const/16 v3, 0x12

    aput-boolean v9, v4, v3

    .line 385
    iget-object v3, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v3}, Lme/writeily/NotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f04000b

    const v6, 0x7f04000f

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/16 v3, 0x13

    aput-boolean v9, v4, v3

    goto/16 :goto_0

    .line 368
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    const/16 v5, 0x8

    aput-boolean v9, v4, v5

    .line 369
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    const/16 v5, 0x9

    aput-boolean v9, v4, v5

    .line 373
    :goto_3
    const-string v5, "md_preview_base"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0xc

    aput-boolean v9, v4, v5

    goto :goto_1

    .line 369
    :cond_2
    const/16 v5, 0xa

    aput-boolean v9, v4, v5

    .line 370
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uriBase":Landroid/net/Uri;
    const/16 v5, 0xb

    aput-boolean v9, v4, v5

    goto :goto_3

    .line 380
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "uriBase":Landroid/net/Uri;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lme/writeily/NotesFragment$NotesItemClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v5}, Lme/writeily/NotesFragment;->access$900(Lme/writeily/NotesFragment;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lme/writeily/NoteActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x10

    aput-boolean v9, v4, v5

    goto :goto_2
.end method
