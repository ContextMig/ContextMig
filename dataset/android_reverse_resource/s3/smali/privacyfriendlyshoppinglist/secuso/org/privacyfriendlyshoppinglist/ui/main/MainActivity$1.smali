.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;
.super Lrx/Subscriber;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;->setupAlertSubscriber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x291ba0302d873b50L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 177
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 184
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getAlertTextView()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 190
    :goto_0
    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getAlertTextView()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity$1;->onNext(Ljava/lang/Long;)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
