.class Lcom/android/settings/fS;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic vj:Lcom/android/settings/fQ;


# direct methods
.method constructor <init>(Lcom/android/settings/fQ;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/fS;->vj:Lcom/android/settings/fQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fS;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/fW;Lcom/android/settings/fW;)I
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/fS;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/fW;->b(Lcom/android/settings/fW;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/fW;->b(Lcom/android/settings/fW;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 159
    check-cast p1, Lcom/android/settings/fW;

    check-cast p2, Lcom/android/settings/fW;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fS;->a(Lcom/android/settings/fW;Lcom/android/settings/fW;)I

    move-result v0

    return v0
.end method
