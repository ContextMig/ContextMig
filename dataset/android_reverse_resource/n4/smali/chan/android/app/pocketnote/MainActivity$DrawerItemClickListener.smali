.class Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x59a9826fc0d840f4L    # 8.431609474892637E123

    const-string v2, "chan/android/app/pocketnote/MainActivity$DrawerItemClickListener"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 336
    iput-object p1, p0, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lchan/android/app/pocketnote/MainActivity;Lchan/android/app/pocketnote/MainActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 336
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;-><init>(Lchan/android/app/pocketnote/MainActivity;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 339
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/MainActivity;->supportInvalidateOptionsMenu()V

    aput-boolean v2, v0, v2

    .line 340
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-static {v1, p3}, Lchan/android/app/pocketnote/MainActivity;->access$300(Lchan/android/app/pocketnote/MainActivity;I)V

    .line 341
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
