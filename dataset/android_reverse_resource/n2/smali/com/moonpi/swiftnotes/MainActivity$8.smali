.class Lcom/moonpi/swiftnotes/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity;->initDialogs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x28a0c33a1ae73214L

    const-string v2, "com/moonpi/swiftnotes/MainActivity$8"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 325
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$8;->$jacocoInit()[Z

    move-result-object v2

    .line 328
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$500()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/moonpi/swiftnotes/DataUtils;->retrieveData(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v1

    .line 331
    .local v1, "tempNotes":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    aput-boolean v6, v2, v6

    .line 332
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$600()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    move-result v0

    .line 334
    .local v0, "restoreSuccessful":Z
    if-eqz v0, :cond_1

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    .line 335
    invoke-static {v1}, Lcom/moonpi/swiftnotes/MainActivity;->access$302(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    const/4 v3, 0x3

    aput-boolean v6, v2, v3

    .line 337
    new-instance v3, Lcom/moonpi/swiftnotes/NoteAdapter;

    iget-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v4}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/moonpi/swiftnotes/MainActivity;->access$402(Lcom/moonpi/swiftnotes/NoteAdapter;)Lcom/moonpi/swiftnotes/NoteAdapter;

    aput-boolean v6, v2, v8

    .line 338
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$400()Lcom/moonpi/swiftnotes/NoteAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    .line 340
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v3}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const/4 v5, 0x6

    aput-boolean v6, v2, v5

    .line 341
    invoke-virtual {v4}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-boolean v6, v2, v5

    .line 340
    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    .line 343
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x9

    aput-boolean v6, v2, v3

    .line 346
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    aput-boolean v6, v2, v3

    .line 347
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v3}, Lcom/moonpi/swiftnotes/MainActivity;->access$700(Lcom/moonpi/swiftnotes/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0xb

    aput-boolean v6, v2, v3

    .line 351
    :goto_0
    const/16 v3, 0xd

    aput-boolean v6, v2, v3

    .line 360
    :goto_1
    const/16 v3, 0x12

    aput-boolean v6, v2, v3

    .line 365
    .end local v0    # "restoreSuccessful":Z
    :goto_2
    const/16 v3, 0x14

    aput-boolean v6, v2, v3

    return-void

    .line 350
    .restart local v0    # "restoreSuccessful":Z
    :cond_0
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v3}, Lcom/moonpi/swiftnotes/MainActivity;->access$700(Lcom/moonpi/swiftnotes/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v3}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const/16 v5, 0xe

    aput-boolean v6, v2, v5

    .line 356
    invoke-virtual {v4}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    aput-boolean v6, v2, v5

    .line 355
    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x10

    aput-boolean v6, v2, v4

    .line 358
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x11

    aput-boolean v6, v2, v3

    goto :goto_1

    .line 364
    .end local v0    # "restoreSuccessful":Z
    :cond_2
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$8;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v3}, Lcom/moonpi/swiftnotes/MainActivity;->showRestoreFailedDialog()V

    const/16 v3, 0x13

    aput-boolean v6, v2, v3

    goto :goto_2
.end method
