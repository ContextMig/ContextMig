.class Lorg/asdtm/goodweather/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/MainActivity;->initializeWeatherReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1c4928c2f454efb3L

    const-string v2, "org/asdtm/goodweather/MainActivity$3"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 452
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$3;->$jacocoInit()[Z

    move-result-object v3

    .line 455
    const-string v0, "org.asdtm.goodweather.action.WEATHER_UPDATE_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    aput-boolean v2, v3, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    .line 468
    :goto_1
    const/16 v0, 0xf

    aput-boolean v2, v3, v0

    return-void

    .line 455
    :sswitch_0
    const-string v5, "org.asdtm.goodweather.action.WEATHER_UPDATE_OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    aput-boolean v2, v3, v0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "org.asdtm.goodweather.action.WEATHER_UPDATE_FAIL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x4

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    move v0, v2

    goto :goto_0

    .line 457
    :pswitch_0
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$700(Lorg/asdtm/goodweather/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const/4 v0, 0x7

    aput-boolean v2, v3, v0

    .line 458
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0, v1}, Lorg/asdtm/goodweather/MainActivity;->access$800(Lorg/asdtm/goodweather/MainActivity;Z)V

    const/16 v0, 0x8

    aput-boolean v2, v3, v0

    .line 459
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$900(Lorg/asdtm/goodweather/MainActivity;)V

    .line 460
    const/16 v0, 0x9

    aput-boolean v2, v3, v0

    goto :goto_1

    .line 462
    :pswitch_1
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$700(Lorg/asdtm/goodweather/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const/16 v0, 0xa

    aput-boolean v2, v3, v0

    .line 463
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0, v1}, Lorg/asdtm/goodweather/MainActivity;->access$800(Lorg/asdtm/goodweather/MainActivity;Z)V

    .line 464
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity$3;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const v5, 0x7f08004d

    const/16 v6, 0xb

    aput-boolean v2, v3, v6

    .line 465
    invoke-virtual {v4, v5}, Lorg/asdtm/goodweather/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    aput-boolean v2, v3, v5

    .line 464
    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0xd

    aput-boolean v2, v3, v1

    .line 466
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0xe

    aput-boolean v2, v3, v0

    goto :goto_1

    .line 455
    nop

    :sswitch_data_0
    .sparse-switch
        -0x35d600ed -> :sswitch_0
        -0x185dad6b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
