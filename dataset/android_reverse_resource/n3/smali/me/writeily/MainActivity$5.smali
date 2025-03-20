.class Lme/writeily/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/MainActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67872dfeeb4be4bbL    # -8.704228661107045E-191

    const-string v2, "me/writeily/MainActivity$5"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iput-object p1, p0, Lme/writeily/MainActivity$5;->this$0:Lme/writeily/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/MainActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    iget-object v1, p0, Lme/writeily/MainActivity$5;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$500(Lme/writeily/MainActivity;)V

    .line 126
    aput-boolean v2, v0, v2

    return-void
.end method
