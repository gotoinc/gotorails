# Rails extensions

## Services

**Folder:** `app/services`

**When to use:**
Describes a single unit of business logic:
1. Complicated calculations
2. Interaction of several models
3. Complicated selections from the database (similar to QueryObjects)
4. Interaction of several data sources (files/JSON/XML/etc)

**Naming:** `[Resources::]MakeAnActionService`

**Public interface:** single method call
