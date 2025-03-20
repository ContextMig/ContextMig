.class Lme/writeily/NotesFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x33765597c905de50L    # -5.1553892174785354E60

    const-string v2, "me/writeily/NotesFragment$ActionModeCallback"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 253
    iput-object p1, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/NotesFragment;Lme/writeily/NotesFragment$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 253
    invoke-direct {p0, p1}, Lme/writeily/NotesFragment$ActionModeCallback;-><init>(Lme/writeily/NotesFragment;)V

    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private hideRenameButton(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lme/writeily/NotesFragment$ActionModeCallback;->showRenameContextButton(Landroid/view/Menu;Z)V

    .line 328
    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private manageClickedVIew(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v1

    .line 322
    if-eqz p2, :cond_0

    iget-object v0, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v0}, Lme/writeily/NotesFragment;->access$500(Lme/writeily/NotesFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v0}, Lme/writeily/NotesFragment;->access$700(Lme/writeily/NotesFragment;)Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1a

    aput-boolean v3, v1, v0

    .line 324
    :goto_0
    const/16 v0, 0x1c

    aput-boolean v3, v1, v0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v0}, Lme/writeily/NotesFragment;->access$500(Lme/writeily/NotesFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v0}, Lme/writeily/NotesFragment;->access$700(Lme/writeily/NotesFragment;)Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v0, 0x1b

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private promptForNewName(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 288
    iget-object v1, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 289
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0xb

    aput-boolean v5, v0, v3

    .line 290
    const-string v3, "SOURCE_FILE"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-boolean v5, v0, v3

    .line 291
    new-instance v3, Lme/writeily/dialog/RenameDialog;

    invoke-direct {v3}, Lme/writeily/dialog/RenameDialog;-><init>()V

    const/16 v4, 0xd

    aput-boolean v5, v0, v4

    .line 292
    invoke-virtual {v3, v2}, Lme/writeily/dialog/RenameDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    .line 293
    const-string v2, "RENAME_DIALOG_TAG"

    invoke-virtual {v3, v1, v2}, Lme/writeily/dialog/RenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 294
    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    return-void
.end method

.method private showRenameButton(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lme/writeily/NotesFragment$ActionModeCallback;->showRenameContextButton(Landroid/view/Menu;Z)V

    .line 332
    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showRenameContextButton(Landroid/view/Menu;Z)V
    .locals 5

    .prologue
    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 335
    if-eqz p2, :cond_0

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    .line 336
    const/4 v1, 0x2

    const v2, 0x7f060065

    invoke-interface {p1, v1, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005e

    const/16 v3, 0x20

    aput-boolean v4, v0, v3

    .line 337
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 343
    :goto_0
    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    return-void

    .line 340
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    .line 341
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v2

    .line 271
    iget-object v3, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v3, p1}, Lme/writeily/NotesFragment;->access$202(Lme/writeily/NotesFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    .line 272
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 283
    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    :goto_0
    return v0

    .line 274
    :sswitch_0
    iget-object v0, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v0}, Lme/writeily/NotesFragment;->access$300(Lme/writeily/NotesFragment;)V

    .line 275
    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 277
    :sswitch_1
    iget-object v0, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v0}, Lme/writeily/NotesFragment;->access$400(Lme/writeily/NotesFragment;)V

    .line 278
    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 280
    :sswitch_2
    iget-object v3, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v3}, Lme/writeily/NotesFragment;->access$500(Lme/writeily/NotesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lme/writeily/NotesFragment$ActionModeCallback;->promptForNewName(Ljava/io/File;)V

    .line 281
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_2
        0x7f0c00a0 -> :sswitch_0
        0x7f0c00a8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 258
    const v2, 0x7f0e0004

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 259
    iget-object v1, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 298
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 303
    iget-object v1, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v1}, Lme/writeily/NotesFragment;->access$600(Lme/writeily/NotesFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 314
    invoke-direct {p0, p2, p5}, Lme/writeily/NotesFragment$ActionModeCallback;->manageClickedVIew(IZ)V

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    .line 315
    iget-object v1, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-static {v4}, Lme/writeily/NotesFragment;->access$600(Lme/writeily/NotesFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    .line 316
    invoke-direct {p0, p1}, Lme/writeily/NotesFragment$ActionModeCallback;->hideRenameButton(Landroid/view/ActionMode;)V

    const/16 v1, 0x18

    aput-boolean v5, v0, v1

    .line 319
    :goto_0
    const/16 v1, 0x19

    aput-boolean v5, v0, v1

    return-void

    .line 305
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    aput-boolean v5, v0, v1

    .line 306
    invoke-direct {p0, p1}, Lme/writeily/NotesFragment$ActionModeCallback;->hideRenameButton(Landroid/view/ActionMode;)V

    .line 307
    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v1, p0, Lme/writeily/NotesFragment$ActionModeCallback;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    .line 310
    invoke-direct {p0, p2, p5}, Lme/writeily/NotesFragment$ActionModeCallback;->manageClickedVIew(IZ)V

    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    .line 311
    invoke-direct {p0, p1}, Lme/writeily/NotesFragment$ActionModeCallback;->showRenameButton(Landroid/view/ActionMode;)V

    .line 312
    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$ActionModeCallback;->$jacocoInit()[Z

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
