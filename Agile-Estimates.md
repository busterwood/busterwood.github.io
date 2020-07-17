---
title: "Agile Estimates"
---
# Agile Estimates

## Estimating Size

There are two main size estimates used, *story points* and *ideal days*.

Prefer *story points* as:
 * they are pure size measure, so there is less temptation to use them for bad
 * they help to bring together people with different roles to agree on a single number
 * they do not decay, relative size is still valid if the team gets faster or slower
 * they are faster to estimate
 * my ideal days are not your ideal days

### Story points

Story points are *relative size* estimates, i.e. two stories are the same size if they have the same *story points*.  Story points are often given as a number between 1 and 9, with 1 being the smallest story and 9 being the largest.  Zero may be included for trivial stories.  

Estimating in story points is self-correcting if we consider new stories relative to a number of other stories, i.e. don't just compare to the stories with points 1 and 9.

Suggested point values
* Fibonachi: 1,2,3,5,8
* Doubling: 1,2,4,8

### Ideal days

Estimating in *ideal man days* is an alternative to story points.  The estimated days are *ideal* in that they don't take into account things such as meetings, sickness, interviews, code reviews, phone calls, training, paperwork.  *Ideal days* are **not** estimates of *elapsed time*, and the danger is they *might* be considered as such by unscrupulous management.

### Re-estimatation

It only makes sense to re-estimate stories when the *relative size* of a story changes, e.g. a story turns out to be larger than other stories with the same estimate.

## Planning techniques

Planning poker seems to work, group estimates have been shown to be more accurate then estimates by a single person.
Estimate *features*, not tasks, as features are the thing that makes sense to the end user.

### Big features 

If a feature is too big to fit in a delivery iteration then try to think of how to deliver it as a set of features, don't be tempted to split it into tasks.  For example, try to think of the simplest form of that feature you could deliver, then build one or more extra features on top of that to achieve the original feature.

Try splitting on:
* data, e.g. just handle a subset of data.
* operation, e.g. separate create, read, update, delete.
* non-functional, e.g. getting working first, have a separate story for performance

## Velocity

The *velocity* of the team is the number of story points (or ideal days) delivered in an iteration.  Tracking velocity allows estimates to be self-correcting, e.g. if the team think it can deliver 20 stories points per iteration, but they could only manage 10, then the project will take twice as long.

## Prioritisation

Which stories to develop first?  Need to take into account a number of things:
1. Perceived financial benefit, maybe not an actual figure, maybe a relative 1-3 $$$ rating
2. Estimated cost
3. Knowledge gained
4. Risk reduced

# Short and long term planning

Longer term planning requires less accuracy than planning the next iteration.  Originally estimate in stories and *story points* and the refine the stories into tasks as shortly before the team starts working on them. 

|            | Short term | Long term    |
|------------|------------|--------------|
| Time       | 1-4 weeks  | 3-9 Months   |
| Estimate   | Tasks      | Stories      |
| Units      | Ideal hours or days | Story points |

