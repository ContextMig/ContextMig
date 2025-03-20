.class Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;
.super Ljava/lang/Object;
.source "AsyncTaskWithProgressBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2de996b44f3893c0L    # 1.6079009919118276E-87

    const-string v2, "com/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iput-object p1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;->this$0:Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;->this$0:Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->access$000(Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 42
    aput-boolean v2, v0, v2

    return-void
.end method
