.class public Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;
.super Ljava/lang/Object;
.source "AnswersProxy.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static instance:Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;


# instance fields
.field private enabled:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6328a5729ce98f0bL    # 4.6507067513301776E169

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/AnswersProxy"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->instance:Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 23
    :goto_0
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->instance:Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1

    .line 21
    :cond_0
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->instance:Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    aput-boolean v3, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-boolean v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->enabled:Z

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public logButton(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoInit()[Z

    move-result-object v2

    .line 52
    iget-boolean v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->enabled:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v3, Lcom/crashlytics/android/answers/ContentViewEvent;

    invoke-direct {v3}, Lcom/crashlytics/android/answers/ContentViewEvent;-><init>()V

    .line 54
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/answers/ContentViewEvent;->putContentName(Ljava/lang/String;)Lcom/crashlytics/android/answers/ContentViewEvent;

    move-result-object v3

    const-string/jumbo v4, "Button"

    .line 55
    invoke-virtual {v3, v4}, Lcom/crashlytics/android/answers/ContentViewEvent;->putContentType(Ljava/lang/String;)Lcom/crashlytics/android/answers/ContentViewEvent;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Lcom/crashlytics/android/answers/Answers;->logContentView(Lcom/crashlytics/android/answers/ContentViewEvent;)V

    .line 56
    const/16 v1, 0x8

    aput-boolean v0, v2, v1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x9

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public logEvent(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoInit()[Z

    move-result-object v2

    .line 41
    iget-boolean v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->enabled:Z

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v3, Lcom/crashlytics/android/answers/ContentViewEvent;

    invoke-direct {v3}, Lcom/crashlytics/android/answers/ContentViewEvent;-><init>()V

    .line 43
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/answers/ContentViewEvent;->putContentName(Ljava/lang/String;)Lcom/crashlytics/android/answers/ContentViewEvent;

    move-result-object v3

    const-string/jumbo v4, "Event"

    .line 44
    invoke-virtual {v3, v4}, Lcom/crashlytics/android/answers/ContentViewEvent;->putContentType(Ljava/lang/String;)Lcom/crashlytics/android/answers/ContentViewEvent;

    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Lcom/crashlytics/android/answers/Answers;->logContentView(Lcom/crashlytics/android/answers/ContentViewEvent;)V

    .line 45
    const/4 v1, 0x6

    aput-boolean v0, v2, v1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x7

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iput-boolean p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->enabled:Z

    .line 34
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
