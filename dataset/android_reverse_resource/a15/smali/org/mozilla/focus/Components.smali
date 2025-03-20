.class public final Lorg/mozilla/focus/Components;
.super Ljava/lang/Object;
.source "Components.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Components.kt\norg/mozilla/focus/Components\n*L\n1#1,29:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lorg/mozilla/focus/Components;

.field private static final searchEngineManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/mozilla/focus/Components;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "searchEngineManager"

    const-string v5, "getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/mozilla/focus/Components;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 17
    new-instance v0, Lorg/mozilla/focus/Components;

    invoke-direct {v0}, Lorg/mozilla/focus/Components;-><init>()V

    sput-object v0, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    .line 18
    sget-object v0, Lorg/mozilla/focus/Components$searchEngineManager$2;->INSTANCE:Lorg/mozilla/focus/Components$searchEngineManager$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/mozilla/focus/Components;->searchEngineManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;
    .locals 3

    .prologue
    sget-object v0, Lorg/mozilla/focus/Components;->searchEngineManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/mozilla/focus/Components;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/SearchEngineManager;

    return-object v0
.end method
