.class Lcom/moonpi/swiftnotes/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/MainActivity;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$13;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x319651229097696cL    # 8.083799572527052E-70

    const-string v2, "com/moonpi/swiftnotes/MainActivity$13"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$13;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$13;->$jacocoInit()[Z

    move-result-object v0

    .line 568
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    iput-object p2, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$13;->$jacocoInit()[Z

    move-result-object v0

    .line 572
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/moonpi/swiftnotes/DataUtils;->deleteNotes(Lorg/json/JSONArray;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/moonpi/swiftnotes/MainActivity;->access$302(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    aput-boolean v4, v0, v4

    .line 575
    new-instance v1, Lcom/moonpi/swiftnotes/NoteAdapter;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1}, Lcom/moonpi/swiftnotes/MainActivity;->access$402(Lcom/moonpi/swiftnotes/NoteAdapter;)Lcom/moonpi/swiftnotes/NoteAdapter;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 576
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$100()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$400()Lcom/moonpi/swiftnotes/NoteAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 579
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$600()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-boolean v4, v0, v6

    .line 582
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 590
    :goto_0
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$100()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$13$1;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$13$1;-><init>(Lcom/moonpi/swiftnotes/MainActivity$13;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 597
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 598
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/MainActivity;->access$700(Lcom/moonpi/swiftnotes/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 603
    :goto_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 604
    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    return-void

    .line 582
    :cond_0
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 583
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const/4 v3, 0x7

    aput-boolean v4, v0, v3

    .line 584
    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-boolean v4, v0, v3

    .line 583
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 586
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$13;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/MainActivity;->access$700(Lcom/moonpi/swiftnotes/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    goto :goto_1
.end method
