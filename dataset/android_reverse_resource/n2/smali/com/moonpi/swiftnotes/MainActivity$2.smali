.class Lcom/moonpi/swiftnotes/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x227f50263d53380cL    # -2.543572139975474E142

    const-string v2, "com/moonpi/swiftnotes/MainActivity$2"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$2;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0xea60

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$2;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const-class v3, Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v4, v0, v4

    .line 172
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 173
    const-string v2, "requestCode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 175
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$2;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v2, v1, v5}, Lcom/moonpi/swiftnotes/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method
