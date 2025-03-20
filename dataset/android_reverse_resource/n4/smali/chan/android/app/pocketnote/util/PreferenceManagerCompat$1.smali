.class final Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;
.super Ljava/lang/Object;
.source "PreferenceManagerCompat.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic val$listener:Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2e6aeec2f63ec030L    # -1.0231715357917034E85

    const-string v2, "chan/android/app/pocketnote/util/PreferenceManagerCompat$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;->val$listener:Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;->$jacocoInit()[Z

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceTreeClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v4, v2, v4

    .line 52
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;->val$listener:Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aget-object v1, p3, v4

    check-cast v1, Landroid/preference/Preference;

    invoke-interface {v3, v0, v1}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    goto :goto_0
.end method
