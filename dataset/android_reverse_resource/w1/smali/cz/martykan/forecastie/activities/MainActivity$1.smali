.class Lcz/martykan/forecastie/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/martykan/forecastie/activities/MainActivity;->searchCities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/MainActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x819a564f04b8f69L

    const-string v2, "cz/martykan/forecastie/activities/MainActivity$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    iput-object p1, p0, Lcz/martykan/forecastie/activities/MainActivity$1;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    iput-object p2, p0, Lcz/martykan/forecastie/activities/MainActivity$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 231
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 234
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 231
    :cond_0
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 232
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity$1;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    invoke-static {v2, v1}, Lcz/martykan/forecastie/activities/MainActivity;->access$000(Lcz/martykan/forecastie/activities/MainActivity;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
