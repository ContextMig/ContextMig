.class Lbr/com/vansact/MainApp$1;
.super Ljava/lang/Object;
.source "MainApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/vansact/MainApp;->deleteAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lbr/com/vansact/MainApp;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansact/MainApp$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x77f632547ceddd1fL    # 7.328964549869731E269

    const-string v2, "br/com/vansact/MainApp$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansact/MainApp$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lbr/com/vansact/MainApp;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/MainApp$1;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    iput-object p1, p0, Lbr/com/vansact/MainApp$1;->this$0:Lbr/com/vansact/MainApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp$1;->$jacocoInit()[Z

    move-result-object v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lbr/com/vansact/MainApp$1;->this$0:Lbr/com/vansact/MainApp;

    invoke-static {v0}, Lbr/com/dao/ShoppingListDAO;->deleteAll(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 138
    iget-object v0, p0, Lbr/com/vansact/MainApp$1;->this$0:Lbr/com/vansact/MainApp;

    invoke-static {v0}, Lbr/com/vansact/MainApp;->access$000(Lbr/com/vansact/MainApp;)V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 144
    :goto_0
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void

    .line 139
    :catch_0
    move-exception v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 140
    iget-object v2, p0, Lbr/com/vansact/MainApp$1;->this$0:Lbr/com/vansact/MainApp;

    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 141
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
