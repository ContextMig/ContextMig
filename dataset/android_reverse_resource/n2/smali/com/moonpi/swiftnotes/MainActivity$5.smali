.class Lcom/moonpi/swiftnotes/MainActivity$5;
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

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x51200d68021b3258L    # 6.090710258352428E82

    const-string v2, "com/moonpi/swiftnotes/MainActivity$5"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 265
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$5;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$5;->$jacocoInit()[Z

    move-result-object v1

    .line 269
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    aput-boolean v5, v1, v5

    .line 270
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$500()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    move-result v0

    .line 272
    .local v0, "backupSuccessful":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 273
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$5;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/MainActivity;->showBackupSuccessfulDialog()V

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 281
    :goto_0
    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 290
    .end local v0    # "backupSuccessful":Z
    :goto_1
    const/16 v2, 0xd

    aput-boolean v5, v1, v2

    return-void

    .line 276
    .restart local v0    # "backupSuccessful":Z
    :cond_0
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$5;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$5;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const/4 v4, 0x4

    aput-boolean v5, v1, v4

    .line 277
    invoke-virtual {v3}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-boolean v5, v1, v4

    .line 276
    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    .line 279
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 285
    .end local v0    # "backupSuccessful":Z
    :cond_1
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$5;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity$5;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const/16 v4, 0x9

    aput-boolean v5, v1, v4

    .line 286
    invoke-virtual {v3}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-boolean v5, v1, v4

    .line 285
    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v5, v1, v3

    .line 288
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0xc

    aput-boolean v5, v1, v2

    goto :goto_1
.end method
