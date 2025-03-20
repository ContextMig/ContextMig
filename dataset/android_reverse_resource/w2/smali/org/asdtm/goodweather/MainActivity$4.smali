.class Lorg/asdtm/goodweather/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/MainActivity;
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

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x59691f1bd8fc2daL

    const-string v2, "org/asdtm/goodweather/MainActivity$4"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 477
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 480
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v10, v0, v10

    .line 481
    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v3}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/asdtm/goodweather/MainActivity;->access$1002(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x2

    aput-boolean v10, v0, v2

    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.0f"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v5}, Lorg/asdtm/goodweather/MainActivity;->access$1100(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "temperature"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v10, v0, v3

    .line 489
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v3}, Lorg/asdtm/goodweather/MainActivity;->access$1100(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "description"

    const-string v5, "clear sky"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-boolean v10, v0, v4

    .line 491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.1f"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const/4 v8, 0x5

    aput-boolean v10, v0, v8

    .line 492
    invoke-static {v7}, Lorg/asdtm/goodweather/MainActivity;->access$1100(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wind_speed"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x6

    aput-boolean v10, v0, v7

    .line 491
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-boolean v10, v0, v5

    .line 493
    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v6, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v6}, Lorg/asdtm/goodweather/MainActivity;->access$1100(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "sunrise"

    const/16 v8, 0x8

    aput-boolean v10, v0, v8

    .line 494
    invoke-interface {v6, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/16 v8, 0x9

    aput-boolean v10, v0, v8

    .line 493
    invoke-static {v5, v6, v7}, Lorg/asdtm/goodweather/utils/Utils;->unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    aput-boolean v10, v0, v6

    .line 495
    iget-object v6, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v7, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v7}, Lorg/asdtm/goodweather/MainActivity;->access$1100(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "sunset"

    const/16 v9, 0xb

    aput-boolean v10, v0, v9

    .line 496
    invoke-interface {v7, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/16 v7, 0xc

    aput-boolean v10, v0, v7

    .line 495
    invoke-static {v6, v8, v9}, Lorg/asdtm/goodweather/utils/Utils;->unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    aput-boolean v10, v0, v7

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "City: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v8, v8, Lorg/asdtm/goodweather/MainActivity;->storedContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nTemperature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nWind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const/16 v3, 0xe

    aput-boolean v10, v0, v3

    .line 500
    invoke-static {v2}, Lorg/asdtm/goodweather/MainActivity;->access$1000(Lorg/asdtm/goodweather/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSunrise: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSunset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v10, v0, v2

    .line 503
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-boolean v10, v0, v3

    .line 504
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x11

    aput-boolean v10, v0, v3

    .line 505
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12

    aput-boolean v10, v0, v1

    .line 506
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x13

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v0, v1

    .line 508
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-string v3, "Share Weather"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    const/16 v1, 0x14

    aput-boolean v10, v0, v1

    .line 514
    :goto_0
    const/16 v1, 0x18

    aput-boolean v10, v0, v1

    return-void

    .line 509
    :catch_0
    move-exception v1

    const/16 v1, 0x15

    aput-boolean v10, v0, v1

    .line 510
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$4;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-string v2, "Communication app not found"

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v10, v0, v2

    .line 512
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x17

    aput-boolean v10, v0, v1

    goto :goto_0
.end method
